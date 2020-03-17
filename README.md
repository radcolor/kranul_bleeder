# Welcome Karamel Bleeders!

Ever wanted to just compile a kernel for your device without knowing anything about commands, compilers, and about linux enviroment.

**Well you are f##king welcome here!**

## Things you need before starting

- A kernel tree source, that is bootable obviously.
- Compilers to compile your kernel (Don't worry iam here).
- AnyKernel, so that you can flash your kernel in your device (for that also iam here to help).

## Things you must know before starting

- About defconfig(Default Configure) - it's a file mainly located inside your_kernel_repo/arch/arm/
arm64/config/*HERE*. you need that file name and replace in this [line](https://github.com/theradcolor/karamel-bleeder/blob/master/build.sh#L50),
remember it's device specific file you need to figure out on own or either ask your kernel owner for which file to use.

- English?

- and yes ofcourse a mind.

## So, how to?

Here are the **5 crucial steps** that can help you to compile your own kernel.

**1.** Clone this repository, we will be doing everthing inside this repository folder. for that type the below command.

it will clone this repository in your local machine.

```
git clone https://github.com/theradcolor/karamel-bleeder.git
```
then you need to come inside the folder of cloned repository.
```
cd karamel-bleeder/
```

**2.** You need several dependencies and libraries for that, execute the below command.

this will install all dependencies that you need.
```
bash setup.sh
```

**3.** Now we will download our required compilers, again i know you are lazy just like me so just copy-paste the below command.

this will clone required compilers.
```
bash compiler.sh
```

**4.** Now we will clone the anykernel repository.
**Note: You need to do changes in anykernel script [Example here](https://github.com/theradcolor/AnyKernel3/commit/d22e27de55660b5f7dae28e61c378cc37f1808e9) and it's files according to your device and for that you need brain go and READ THE ANYKERNEL DOCUMENTATION**.

this will clone the anykernel.
```
bash ak.sh
```

**5.** Ok the final and most complicated part **COMPILING THE KERNEL**, the below script will only help you to compile the kernel and make it as flashable zip.
It will not help you to fix errors and warning and this needs a human brain!

this command will help you to compile your karamel.
```
bash build.sh
```

## Important

- Make sure your kernel is inside this current folder(karamel-bleeder) and change the folder name of kernel repo to *kernel* or either replace folder name in [this](https://github.com/theradcolor/karamel-bleeder/blob/master/build.sh#L8) line.

- You may need to change architecture which depends on your CPU, change here in [this](https://github.com/theradcolor/karamel-bleeder/blob/master/build.sh#L16) line.

Congratulations, you have successfully compiled and flashed a kernel *AS A NOOB!*

## Next step? (Needs more brain)

So what's next, want to upstream your kernel to latest linux tag or want to merge the
latest CAF(Code Aurora Forum) into your kernel, well...

Follow this my [GitHub Gist](https://gist.github.com/theradcolor)

also here are my [Personal Scripts](https://github.com/theradcolor/scripts.git)

## Pull requests and issues are welcome!
## Thanks