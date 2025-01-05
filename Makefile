include .env
export

IMAGES_DIR = assets/images
METADATA_DIR = assets/metadata

.PHONY: upload-image upload-metadata

# Upload une image sur IPFS
upload-image:
	@echo "Upload de l'image sur IPFS..."
	@curl -X POST \
		-F file=@$(IMAGES_DIR)/$(IMAGE) \
		-H "pinata_api_key: $(PINATA_API_KEY)" \
		-H "pinata_secret_api_key: $(PINATA_SECRET_KEY)" \
		https://api.pinata.cloud/pinning/pinFileToIPFS

# Upload un fichier metadata sur IPFS
upload-metadata:
	@echo "Upload des metadata sur IPFS..."
	@curl -X POST \
		-H "Content-Type: application/json" \
		-H "pinata_api_key: $(PINATA_API_KEY)" \
		-H "pinata_secret_api_key: $(PINATA_SECRET_KEY)" \
		-d @$(METADATA_DIR)/$(TOKEN_ID).json \
		https://api.pinata.cloud/pinning/pinJSONToIPFS

deployIraGiveway:
	@echo "Deploying the IRA_Giveway contract..."
	forge script script/Deploy_IRA_Giveway.s.sol:Deploy_IRA_Giveway --rpc-url $(RPC_URL) --private-key $(PRIVATE_KEY) --broadcast --legacy

mint:
	@echo "Minting NFT..."
	@cast send $(CONTRACT_ADDRESS) \
		"safeMint(address,string)" \
		$(TO_ADDRESS) \
		"$(TOKEN_URI)" \
		--rpc-url $(RPC_URL) \
		--private-key $(PRIVATE_KEY) \
		--legacy