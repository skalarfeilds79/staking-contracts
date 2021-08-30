import {ethers} from "hardhat";
import {StakingDummy} from "../types/StakingDummy";

const STAKING_CONTRACT_ADDRESS = process.env.STAKING_CONTRACT_ADDRESS ?? '';

async function main() {
  console.log("Check current contract information " + STAKING_CONTRACT_ADDRESS);

  const StakingContractFactory = await ethers.getContractFactory("StakingDummy");
  const stakingContract = await StakingContractFactory.attach(STAKING_CONTRACT_ADDRESS) as StakingDummy;

  const [stakedAmount] = await Promise.all([
    stakingContract.stakedAmount()
  ])

  console.log(`Total staked amount: ${stakedAmount.toString()}`)
  // 2fb25caf989d8e4806c5c1cb7c448a4453deaa8453d5d54cc9cf0638b24d1ae6 PK
  // 0x2E6e1996eA0568C05334fB9ce10F2aF32080F7Fc addr
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
