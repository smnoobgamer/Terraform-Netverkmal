# Terraform Azure Network Setup

Dette prosjektet setter opp en Azure-infrastruktur ved hjelp av Terraform. Det oppretter en ressursgruppe, et virtuelt nettverk og subnets i den angitte Azure-regionen.

## Innhold

- `main.tf`: Hovedkonfigurasjonen for ressursene.
- `variables.tf`: Definerer variabler brukt i Terraform-prosjektet.
- `terraform.tfvars`: Inneholder verdier for variabler som brukes under distribusjonen.

## Forutsetninger

- Terraform er installert på datamaskinen din.
- En Azure-konto med de nødvendige tillatelsene.

## Konfigurasjon

### Variabler

Før du kjører prosjektet, kan du endre verdiene i `terraform.tfvars`-filen for å tilpasse konfigurasjonen. Her er et eksempel på innholdet:

```hcl
location               = "Norway East"                # Angi ønsket Azure-region.
resource_group_name    = "production-resource-group"  # Navn på ressursgruppen.
vnet_name              = "production-vnet"            # Navn på det virtuelle nettverket.
vnet_address_space     = "10.1.0.0/16"                # Adresseområde for det virtuelle nettverket.
subnet_count           = 2                             # Antall subnets som skal opprettes.
subnet_names           = ["subnet1", "subnet2"]       # Navnene på subnets.
subnet_address_prefixes = ["10.1.1.0/24", "10.1.2.0/24"]  # Adresseprefikser for subnets.
Hvordan bruke
```
## hvordan bruke

- Klon dette prosjektet til din lokale maskin.

- Naviger til prosjektmappen i terminalen.

- Initialiser Terraform-prosjektet:


terraform init



terraform plan


terraform apply


Bekreft med "yes" for å fullføre distribusjonen.

## Rydde opp
For å rydde opp infrastrukturen opprettet av Terraform, kjør:

terraform destroy
