## InRealArt giveway smart contracts

**This is the smart contrat for mintinh our special NFT given for the giveway during Christmas 2024**

## Makefile Scripts

### Upload images on IPFS

```shell
$ make upload-image IMAGE=mon-image.jpg
```

The image must be in the directory _/assets/images_

### Upload images on IPFS

```shell
$ make upload-metadata TOKEN_ID=1
```

### Mint a NFT

```shell
$ make mint CONTRACT_ADDRESS=0x123 TO_ADDRESS=0x456 TOKEN_URI="ipfs://QmVotreHashMetadata"
```

The metadata file must be in the directory _/assets/metadata_

## Smart contract addresses

We chose Polygon network for this smart contract

This is the last deployed SC

We opt for _catapulta_ (https://catapulta.sh) to deploy smart contract.

The comman to deploy : 

```
catapulta script script/Deploy_IRA_Giveway.s.sol:Deploy_IRA_Giveway --network polygon --legacy --sender <PUBLIC_KEY_DEPLOYER>
```



### Testnet

0x061b0604e6A0c6CDAe32Fd5de3Cdfb93F8Cb12bc

### Mainnet
0x061b0604e6A0c6CDAe32Fd5de3Cdfb93F8Cb12bc


## List of winners

 - Triskelion : 0xd703eCa4667416F9F3286C2A10cF02cB51A49720 (Ronan Martin)
 - Mlem | IRA : 0xA0F63B3ffdFC399f138E846268A9f144A076251B (Ronan Martin)
 - Shin 🇻🇳 : 0x53bf81324eB00e528eFf98867455D457CE4143Ed (Monique Laville)


