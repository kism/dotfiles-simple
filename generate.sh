echo > generated.txt

echo 'cat > ~/.bashrc << "EOF"' >> generated.txt
cat .bashrc >> generated.txt
echo "EOF" >> generated.txt

echo >> generated.txt

echo 'cat > ~/.bash_profile << "EOF"' >> generated.txt
cat .bash_profile >> generated.txt
echo "EOF" >> generated.txt

echo >> generated.txt

echo 'cat > ~/.inputrc << "EOF"' >> generated.txt
cat .inputrc >> generated.txt
echo "EOF" >> generated.txt

echo >> generated.txt

echo 'cat > ~/.vimrc << "EOF"' >> generated.txt
cat .vimrc >> generated.txt
echo "EOF" >> generated.txt

echo >> generated.txt

echo "source ~/.bashrc" >> generated.txt
echo "clear" >> generated.txt
