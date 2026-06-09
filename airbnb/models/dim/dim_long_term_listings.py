def model(dbt, session):
    listings = dbt.ref("dim_listings_clean")

    return (listings.filter(listings["MINIMUM_NIGHTS"] >= 30)
                   .select("LISTING_ID", "LISTING_NAME", "PRICE", "MINIMUM_NIGHTS"))

