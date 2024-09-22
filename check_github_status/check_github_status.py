import requests

def check_github_status():
    url = "https://www.githubstatus.com/api/v2/summary.json"
    
    try:
        response = requests.get(url)
        response.raise_for_status()  # Raise an error for bad responses
        data = response.json()
        
        # Check for ongoing incidents
        ongoing_incidents = data.get('data', {}).get('incidents', [])
        
        if ongoing_incidents:
            print("There are ongoing issues:")
            for incident in ongoing_incidents:
                print(f"- {incident['name']}: {incident['status']}")
        else:
            print("All systems are operational. No ongoing issues.")
    
    except requests.exceptions.RequestException as e:
        print(f"An error occurred: {e}")

if __name__ == "__main__":
    check_github_status()