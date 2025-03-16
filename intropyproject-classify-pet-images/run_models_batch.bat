@echo off
REM */AIPND-revision/intropyproject-classify-pet-images/run_models_batch.bat
REM                                                                             
REM PROGRAMMER: Jennifer S.
REM DATE CREATED: 02/08/2018
REM REVISED DATE: 04/23/2018 - revised run_models_batch.sh to run on 
REM                            windows OS using bat and Anaconda Prompt 
REM PURPOSE: Runs all three models to test which provides 'best' solution.
REM          Please note output from each run has been piped into a text file.
REM
REM Usage: run_models_batch.bat  -- will run program from commandline on Window OS
REM 
@echo on
python intropyproject-classify-pet-images/check_images.py --dir intropyproject-classify-pet-images/pet_images/ --arch resnet  --dogfile intropyproject-classify-pet-images/dognames.txt > intropyproject-classify-pet-images/resnet_pet-images.txt
python intropyproject-classify-pet-images/check_images.py --dir intropyproject-classify-pet-images/pet_images/ --arch alexnet --dogfile intropyproject-classify-pet-images/dognames.txt > intropyproject-classify-pet-images/alexnet_pet-images.txt
python intropyproject-classify-pet-images/check_images.py --dir intropyproject-classify-pet-images/pet_images/ --arch vgg  --dogfile intropyproject-classify-pet-images/dognames.txt > intropyproject-classify-pet-images/vgg_pet-images.txt
