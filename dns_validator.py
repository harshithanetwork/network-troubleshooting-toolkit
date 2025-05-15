import dns.resolver

domain = "example.com"
record_type = "A"

try:
    answers = dns.resolver.resolve(domain, record_type)
    for rdata in answers:
        print(f"{record_type} Record: {rdata}")
except Exception as e:
    print(f"Error: {e}")
