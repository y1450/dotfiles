# syntax=docker/dockerfile:1
FROM ubuntu
ENV GITHUB_USERNAME="y1450"
RUN apt-get update 
RUN apt-get install curl git  --assume-yes 
#RUN sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply $GITHUB_USERNAME
#RUN chezmoi init https://github.com/$GITHUB_USERNAME/dotfiles.git
RUN git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
RUN apt-get install neovim --assume-yes
RUN curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh
RUN bash
