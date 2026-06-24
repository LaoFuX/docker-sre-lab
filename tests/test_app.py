from app import app

def test_health_route_exists():
    client = app.test_client()
    response = client.get("/health")
    assert response.status_code in [200, 500]
