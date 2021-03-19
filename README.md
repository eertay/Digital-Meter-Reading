# MATLAB OCR ENGINE / Digital Meter Reading

AMR (automatic meter reading) project for digital meters, built with MATLAB OCR Engine using basic OCR and image processing knowledge.

## **OCR** 

Conversion of images typed, handwritten or printed text into machine-encoded text. Widely used form is the data entry from printed papers. Aim is to digitize these texts, so that they can be electronically edited for AI, computer vision or pattern recognition research.

**for more info:** https://github.com/kba/awesome-ocr

### **Some OCR Applications:**

* Project Gutenberg
* Google Books
* Automatic number-plate recognition
* Passport Recognition
* Traffic-Sign Recognition (TSR)
* ...

## **AMR**

AMR allows the employees of the service company (electricity/gas/water) or preferably, the consumers themselves to capture meter images using a mobile device, which is cheaper and more feasible than manual on-site reading, and easier to deploy - in the short/medium term - than the replacement of old meters.

### **Two main categories:**

**1.Analog:** Cyclometer and dial displays

**2.Digital:** Electronic display and smart meters

### **Difficulties in AMR:**

* Poor file resolution
* Blurry images, particularly motion blur
* Small or large scale
* Poor lighting and low contrast due to overexposure, reflection or shadows
* An object obscuring (dirt, broken glass etc.)

## **Technologies**

3 different approaches have been applied to project and the most accurate one "MATLAB OCR Engine" approach has been selected.

* **CNN**
  * Train: [SVHN (The Street View House Numbers)](http://ufldl.stanford.edu/housenumbers/)
  * Test: [Digital Meter Images](https://github.com/eertay/Digital-Meter-Reading/tree/main/original-images) 
  * Test Image Values: [.xlsx](https://github.com/eertay/Digital-Meter-Reading)
  
* **Pytesseract with Python on Colab**
  * [Code](https://colab.research.google.com/drive/1fsE0tP_e6g0qoz3k0fOI_-UjRJHhuvCP)
  
* **MATLAB OCR Engine**
  * Pre-processing: [matlab function](https://github.com/eertay/Digital-Meter-Reading/tree/main/MATLAB-OCR-Engine/pre-processing-function-matlab)
  * OCR Function: [matlab function](https://github.com/eertay/Digital-Meter-Reading/tree/main/MATLAB-OCR-Engine/ocr-function-matlab)
  * Scoring: [colab notebook](https://colab.research.google.com/drive/1fsE0tP_e6g0qoz3k0fOI_-UjRJHhuvCP)

## **Accuracy** 

**Digit Correctness:** 73% or above

**Meter Reading Correctness:** 12.5% or above

Accuracy may increase/decrease due to changes in the pre-processing steps or the image quality (brightness, luminance, contrast etc.)

## **Result**

![digital](https://user-images.githubusercontent.com/29989590/111779562-545a3700-88c7-11eb-99e3-8e45d7ece32e.png)
