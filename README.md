# 🪨 Rockem

Piper text-to-speech model training pipeline.

## 🤔 How to use

1. Prepare the your own data and copy it to the `/data` folder.
2. Run `docker compose -f .\preprocess.yml up`
3. Start training the model
    * Run `docker compose -f .\train_with_cpu.yml up` if you don't have a 
    CUDA-enabled accelerator
    * Run `docker compose -f .\train_with_cuda.yml up` if you have a 
    CUDA-enabled accelerator

## 📦 Data

To train the model, fill the `data/wavs/` folder with audio files and the 
`data/metadata.csv` file with transcriptions.

**🎙️ Requirements for audio files**:

* The audio must be in `.wav` format.
* The audio must have a `sample rate` of 22050.

**📄 Requirements for audio files `metadata.csv` file**:

* The columns will have no headers, the values will start from the first line.
* Despite the `.csv` extension, the separator must be pipe.
