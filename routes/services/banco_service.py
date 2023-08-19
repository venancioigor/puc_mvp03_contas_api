import requests

def get_banco_by_id(id_banco):
    url = f"http://127.0.0.1:5000/api/bancos/getBancoById?id_banco={id_banco}" 
    response = requests.get(url)

    if response.status_code == 200:
        return response.json()
    else:
        return {'mensagem': 'Banco não encontrado.'}
    
