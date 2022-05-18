CREATE TABLE `Nota Fiscal` (
	`Numero_NF` DECIMAL(6) NOT NULL,
	`Nome_Destinatario` TEXT NOT NULL,
	`CPF_CNPJ` DECIMAL(15) NOT NULL,
	`Data_Emissão` DATETIME(8) NOT NULL,
	`Endereço` varchar(25) NOT NULL,
	`Bairro` TEXT(20) NOT NULL,
	`CEP` BINARY(8) NOT NULL,
	`Data_de_saida` DATETIME(8) NOT NULL,
	`Municipio` BINARY(15) NOT NULL,
	`Telefone` varchar(15) NOT NULL,
	`UF` TEXT(2) NOT NULL,
	PRIMARY KEY (`Numero_NF`)
);

CREATE TABLE `Itens do Pedido` (
	`Itens` DECIMAL NOT NULL AUTO_INCREMENT,
	`Cód_produto` FLOAT NOT NULL,
	`Descrição_produto` BINARY NOT NULL,
	`NCM` FLOAT NOT NULL,
	`CFOP` FLOAT NOT NULL,
	`UN` DECIMAL NOT NULL,
	`Quantidade` DECIMAL NOT NULL,
	`Preço_unitario` FLOAT NOT NULL,
	`Preço_total` FLOAT NOT NULL,
	`Impostos` FLOAT NOT NULL,
	PRIMARY KEY (`Itens`)
);

ALTER TABLE `Nota Fiscal` ADD CONSTRAINT `Nota Fiscal_fk0` FOREIGN KEY (`Numero_NF`) REFERENCES `Itens do Pedido`(`Itens`);



