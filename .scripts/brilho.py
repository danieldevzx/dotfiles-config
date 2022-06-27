import os


valor_brilho = int(input("% de brilho: "))


os.system(f"doas brightnessctl s {valor_brilho}%")
