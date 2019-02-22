# Bringing up JM from upstream
```
wget http://iphome.hhi.de/suehring/tml/download/jm19.0.zip
unzip jm19.0.zip && cd JM
chmod +x unixprep.sh; ./unixprep.sh
make -j8
cd bin

# Test Stream & Config can be downloaded from
# https://github.com/febiz/h264-analysis-tool/tree/master/bin
# get test_decoder.cfg & test_kendo_mvc.264

## Usage
```
cd JM/bin
./ldecod.exe -h
./ldecod.exe -f test_decoder.cfg

# Check stream info
mediainfo test_kendo_mvc.264 

# Play compressed stream
vlc --demux h264 test_kendo_mvc.264

# Play decoded stream
vlc --demux rawvideo --rawvid-fps 30 --rawvid-height 768 --rawvid-width 1024 --rawvid-chroma I420 test_dec_ViewId0001.yuv
```
