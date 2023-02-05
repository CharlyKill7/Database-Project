-- -----------------------------------------------------
-- Table `superblockbuster`.`customer`
-- -----------------------------------------------------
ALTER TABLE `superblockbuster`.`customer` 
  ADD PRIMARY KEY (`customer_id`);


-- -----------------------------------------------------
-- Table `superblockbuster`.`customer_master`
-- -----------------------------------------------------
ALTER TABLE `superblockbuster`.`customer_master` 
ADD PRIMARY KEY (`CUSTOMER ID`);


-- -----------------------------------------------------
-- Table `superblockbuster`.`films`
-- -----------------------------------------------------
ALTER TABLE `superblockbuster`.`films` 
ADD  PRIMARY KEY (`film_id`);


-- -----------------------------------------------------
-- Table `superblockbuster`.`inventory`
-- -----------------------------------------------------
ALTER TABLE `superblockbuster`.`inventory` 
  ADD PRIMARY KEY (`inventory_id`, `films_film_id`);
ALTER TABLE `superblockbuster`.`inventory` 
  ADD CONSTRAINT `fk_inventory_films`
    FOREIGN KEY (`films_film_id`)
    REFERENCES `superblockbuster`.`films` (`film_id`);

-- -----------------------------------------------------
-- Table `superblockbuster`.`inventory_master`
-- -----------------------------------------------------
ALTER TABLE `superblockbuster`.`inventory_master` 
ADD PRIMARY KEY (`INVENTORY ID`, `films_film_id`);
ALTER TABLE `superblockbuster`.`inventory_master` 
ADD CONSTRAINT `fk_inventory_master_films1`
    FOREIGN KEY (`films_film_id`)
    REFERENCES `superblockbuster`.`films` (`film_id`);


-- -----------------------------------------------------
-- Table `superblockbuster`.`rental`
-- -----------------------------------------------------
ALTER TABLE `superblockbuster`.`rental` 
ADD PRIMARY KEY (`rental_id`, `inventory_inventory_id`, `inventory_films_film_id`, `customer_customer_id`);
ALTER TABLE `superblockbuster`.`rental` 
ADD CONSTRAINT `fk_rental_customer1`
    FOREIGN KEY (`customer_customer_id`)
    REFERENCES `superblockbuster`.`customer` (`customer_id`);
ALTER TABLE `superblockbuster`.`rental` 
ADD CONSTRAINT `fk_rental_inventory1`
    FOREIGN KEY (`inventory_inventory_id` , `inventory_films_film_id`)
    REFERENCES `superblockbuster`.`inventory` (`inventory_id` , `films_film_id`);


-- -----------------------------------------------------
-- Table `superblockbuster`.`rental_master`
-- -----------------------------------------------------
ALTER TABLE `superblockbuster`.`rental_master` 
ADD PRIMARY KEY (`RENTALS`, `inventory_master_INVENTORY ID`, `customer_master_CUSTOMER ID`);
ALTER TABLE `superblockbuster`.`rental_master` 
ADD CONSTRAINT `fk_rental_master_customer_master1`
    FOREIGN KEY (`customer_master_CUSTOMER ID`)
    REFERENCES `superblockbuster`.`customer_master` (`CUSTOMER ID`);
ALTER TABLE `superblockbuster`.`rental_master` 
ADD CONSTRAINT `fk_rental_master_inventory_master1`
    FOREIGN KEY (`inventory_master_INVENTORY ID`)
    REFERENCES `superblockbuster`.`inventory_master` (`INVENTORY ID`);


