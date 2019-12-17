# NXP audio amplifier - TFA98xx

TFA_DEBUG                =1
TFADSP_DEBUG             =1
TFA_VERSION              =tfa9878
TFADSP_32BITS            =1
TFADSP_DSP_BUFFER_POOL=1
TFA_EXCEPTION_AT_TRANSITION=1
TFA_USE_DEVICE_SPECIFIC_CONTROL=1
TFA_PROFILE_ON_DEVICE    =1
TFA_NO_SND_FORMAT_CHECK  =1
TFA_VOID_APIV_IN_FILE    =1
TFA_MUTE_DURING_SWITCHING_PROFILE=1

# cc flags
ccflags-y               := -DTFA_DEBUG
ccflags-y               += -DTFADSP_DEBUG
ccflags-y               += -DTFADSP_32BITS
ccflags-y               += -DTFADSP_DSP_BUFFER_POOL
ccflags-y               += -DTFA_EXCEPTION_AT_TRANSITION
ccflags-y               += -DTFA_USE_DEVICE_SPECIFIC_CONTROL
ccflags-y               += -DTFA_PROFILE_ON_DEVICE
ccflags-y               += -DTFA_NO_SND_FORMAT_CHECK
ccflags-y               += -DTFA_VOID_APIV_IN_FILE
ccflags-y               += -DTFA_MUTE_DURING_SWITCHING_PROFILE
ccflags-y               += -I./inc
ccflags-y               += -Werror

EXTRA_CFLAGS += -I./inc

snd-soc-tfa98xx-objs += tfa98xx.o
snd-soc-tfa98xx-objs += tfa_container.o
snd-soc-tfa98xx-objs += tfa_dsp.o
snd-soc-tfa98xx-objs += tfa_init.o

# built-in driver
obj-y	+= snd-soc-tfa98xx.o
