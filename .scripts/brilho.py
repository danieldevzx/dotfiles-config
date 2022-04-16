import os


valor_brilho = int(input("% de brilho: "))


os.system(f"sudo brightnessctl s {valor_brilho}%")
