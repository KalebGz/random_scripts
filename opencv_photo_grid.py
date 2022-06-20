import os
import glob
import cv2

input_path="/home/images"
os.chdir(indput_path)
images=glob.glob("*.png")
Length=[]
Width=[]
for img in images:
    img=cv2.imread(img)
    width,length=img.shape[0:2]
    Length.append(length)
    Width.append(width)
W=max(Width)
L=max(Length)