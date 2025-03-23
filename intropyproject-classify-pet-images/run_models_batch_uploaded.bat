@echo off
REM */AIPND-revision/intropyproject-classify-pet-images/run_models_batch_uploaded.bat
REM                                                                             
REM PROGRAMMER: Jennifer S.
REM DATE CREATED: 02/08/2018
REM REVISED DATE: 04/23/2018 - revised run_models_batch.sh to run on 
REM                            windows OS using bat and Anaconda Prompt 
REM PURPOSE: Runs all three models to test which provides 'best' solution on the Uploaded Images.
REM          Please note output from each run has been piped into a text file.
REM
REM Usage: run_models_batch_uploaded.bat  -- will run program from commandline on Window OS
REM 
@echo on
python intropyproject-classify-pet-images/check_images.py --dir intropyproject-classify-pet-images/uploaded_images/ --arch resnet  --dogfile intropyproject-classify-pet-images/dognames.txt > intropyproject-classify-pet-images/resnet_uploaded-images.txt
python intropyproject-classify-pet-images/check_images.py --dir intropyproject-classify-pet-images/uploaded_images/ --arch alexnet --dogfile intropyproject-classify-pet-images/dognames.txt > intropyproject-classify-pet-images/alexnet_uploaded-images.txt
python intropyproject-classify-pet-images/check_images.py --dir intropyproject-classify-pet-images/uploaded_images/ --arch vgg  --dogfile intropyproject-classify-pet-images/dognames.txt > intropyproject-classify-pet-images/vgg_uploaded-images.txt
