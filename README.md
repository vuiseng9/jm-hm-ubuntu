# JM(AVC) / HM(HEVC) reference code in Ubuntu
*Feb'19, vuiseng9*

This repo intends to archive the process of bringing up **(1) H.264/AVC, JM** ; **(2) H.265/HEVC, HM** reference software in linux environment. 

## Sources
1. H.264/AVC JM 19.0 code has been downloaded from the author's [official site](http://iphome.hhi.de/suehring/tml/download/)
2. H.265/HEVC HM code *- coming soon latest by this summer -* 

## Validated Setup
Ubuntu 16.04.5 LTS

## TO-DOs
- [ ] Add HEVC HM
- [ ] QTcreator project

## Build
```
git clone https://github.com/vuiseng/jm-hm-ubuntu
cd jm-hm-ubuntu
./make.sh
```

## Docker
```
# build image
cd docker; sudo docker build . -t jm-hm-ubuntu

# run container
cd docker; ./docker_run.sh
```

## Run AVC Decode
```
# AVC decode
cd JM/bin/
./ldecod.exe -h
./ldecod.exe -f test_decoder.cfg

# Validate compressed and decompressed stream
### Play compressed stream in VLC
vlc --demux h264 test_kendo_mvc.264

### Play decompressed stream in VLC
vlc --demux rawvideo --rawvid-fps 30 --rawvid-height 768 --rawvid-width 1024 --rawvid-chroma I420 test_dec_ViewId0001.yuv

### To run VLC as root, in docker for example, 
### execute this line to replace geteuid to getppid in the vlc executable,
### you may run the vlc as usual after that. 
sed -i 's/geteuid/getppid/' /usr/bin/vlc

# Utility - check stream info
mediainfo test_kendo_mvc.264
```


