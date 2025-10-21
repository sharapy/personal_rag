import torch

print("CUDA available: ", torch.cuda.is_available())
print("Running on device: ", torch.cuda.get_device_name(0))