#例えばマルチユーザモードでrvmをインストールした場合、rvmは標準で/etc/profile.d/rvm.shを作成する。
#Linuxの/etc/profileでは/etc/profile.d/*.shが読み込まれるように設定されており、bashがこれを読むので、
#結果的にrvm.shが読み込まれるけど、zshだと読み込んでくれない。そこで/etc/zprofileに以下を追記する
for i in /etc/profile.d/*.sh ; do
    [ -r $i ] && source $i
done

export PATH=$PATH:/usr/local/sbin:/usr/sbin:/sbin:/usr/local/rbenv/versions/2.2.0/bin

