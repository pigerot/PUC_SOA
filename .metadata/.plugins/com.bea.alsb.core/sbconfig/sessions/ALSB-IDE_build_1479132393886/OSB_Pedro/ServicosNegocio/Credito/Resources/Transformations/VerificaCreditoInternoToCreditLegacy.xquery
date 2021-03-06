<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery><![CDATA[(:: pragma bea:global-element-parameter parameter="$parametrosVerificaCreditoInterno1" element="ns2:parametrosVerificaCreditoInterno" location="../../../../EBS/Credito/xsd/ParametrosCredito.xsd" ::)
(:: pragma bea:global-element-return element="ns0:ParametrosCreditLegacy" location="../Interfaces/Schemas/CreditLegacy.xsd" ::)

declare namespace ns2 = "http://pucminas.br/SN/Credito";
declare namespace ns1 = "http://pucminas.br/MC/SOA/Pedro";
declare namespace ns0 = "http://creditlegacy.com.br/SN/CreditLegacy";
declare namespace xf = "http://tempuri.org/OSB_Pedro/ServicosNegocio/Credito/Resources/Transformations/VerificaCreditoInternoToCreditLegacy/";

declare function xf:VerificaCreditoInternoToCreditLegacy($parametrosVerificaCreditoInterno1 as element(ns2:parametrosVerificaCreditoInterno))
    as element(ns0:ParametrosCreditLegacy) {
        <ns0:ParametrosCreditLegacy>
            <ns0:cpf>{ data($parametrosVerificaCreditoInterno1/ns2:pessoa/ns1:cpf) }</ns0:cpf>
            <ns0:dt_solicitacao>{ fn:current-date() }</ns0:dt_solicitacao>
        </ns0:ParametrosCreditLegacy>
};

declare variable $parametrosVerificaCreditoInterno1 as element(ns2:parametrosVerificaCreditoInterno) external;

xf:VerificaCreditoInternoToCreditLegacy($parametrosVerificaCreditoInterno1)]]></con:xquery>
    <con:dependency location="../../../../EBS/Credito/xsd/ParametrosCredito.xsd">
        <con:schema ref="OSB_Pedro/EBS/Credito/xsd/ParametrosCredito"/>
    </con:dependency>
    <con:dependency location="../Interfaces/Schemas/CreditLegacy.xsd">
        <con:schema ref="OSB_Pedro/ServicosNegocio/Credito/Resources/Interfaces/Schemas/CreditLegacy"/>
    </con:dependency>
</con:xqueryEntry>