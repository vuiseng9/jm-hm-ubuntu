# Setting up HM from upstream

# source: https://www.vcodex.com/hevc-and-vp9-codecs-try-them-yourself/
sudo apt-get install -y subversion
svn checkout https://hevc.hhi.fraunhofer.de/svn/svn_HEVCSoftware/trunk/
# Checked out revision 4995.

mv trunk HM
cd HM/build/linux
make -j8


