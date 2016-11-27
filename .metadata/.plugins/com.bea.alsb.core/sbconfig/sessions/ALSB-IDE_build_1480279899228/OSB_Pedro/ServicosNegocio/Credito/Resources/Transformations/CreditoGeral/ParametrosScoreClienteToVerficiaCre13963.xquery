<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery>(:: pragma bea:global-element-parameter parameter="$parametrosScoreCliente1" element="ns1:parametrosScoreCliente" location="../../../../../EBS/Credito/xsd/ParametrosCreditoGeral.xsd" ::)
(:: pragma bea:global-element-return element="ns1:parametrosVerificaCreditoExterno" location="../../../../../EBS/Credito/xsd/ParametrosCredito.xsd" ::)

declare namespace ns1 = "http://pucminas.br/SN/Credito";
declare namespace ns0 = "http://pucminas.br/MC/SOA/Pedro";
declare namespace xf = "http://tempuri.org/OSB_Pedro/ServicosNegocio/Credito/Resources/Transformations/CreditoGeral/PessoaToVerficiaCreditoExterno/";

declare function xf:PessoaToVerficiaCreditoExterno($parametrosScoreCliente1 as element(ns1:parametrosScoreCliente))
    as element(ns1:parametrosVerificaCreditoExterno) {
        &lt;ns1:parametrosVerificaCreditoExterno>
            &lt;ns1:pessoa>{ $parametrosScoreCliente1/ns1:pessoa/@* , $parametrosScoreCliente1/ns1:pessoa/node() }&lt;/ns1:pessoa>
        &lt;/ns1:parametrosVerificaCreditoExterno>
};

declare variable $parametrosScoreCliente1 as element(ns1:parametrosScoreCliente) external;

xf:PessoaToVerficiaCreditoExterno($parametrosScoreCliente1)</con:xquery>
    <con:dependency location="../../../../../EBS/Credito/xsd/ParametrosCreditoGeral.xsd">
        <con:schema ref="OSB_Pedro/EBS/Credito/xsd/ParametrosCreditoGeral"/>
    </con:dependency>
    <con:dependency location="../../../../../EBS/Credito/xsd/ParametrosCredito.xsd">
        <con:schema ref="OSB_Pedro/EBS/Credito/xsd/ParametrosCredito"/>
    </con:dependency>
</con:xqueryEntry>