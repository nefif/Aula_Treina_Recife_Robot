*** Settings ***

Documentation    Aqui estarão presentes todos os recursos que compõem o projeto

##############################################
#                 Libraries                  #
##############################################
#Aqui estarão presentes todas as bibliotecas que compõem o projeto

Library         SeleniumLibrary

##############################################
#                 Keywords                   #
##############################################
#Aqui estarão presentes todas as palavras-chave que compõem o projeto
Resource         keywords/text_box_keywords.robot

##############################################
#                 Pages                      #
##############################################
#Aqui estarão presentes todas as páginas que compõem o projeto
Resource         pages/text_box_page.robot

##############################################
#                 Hooks                      #
##############################################
#Aqui estarão presentes todos os hooks que compõem o projeto
Resource         hooks.robot