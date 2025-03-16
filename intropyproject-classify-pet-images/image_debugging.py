from PIL import Image

img_path = 'C:/Users/dhiah/Documents/udacity/AIPND-revision/intropyproject-classify-pet-images/pet_images/'
try:
    img = Image.open(img_path)
    img.show()
except Exception as e:
    print(e)
