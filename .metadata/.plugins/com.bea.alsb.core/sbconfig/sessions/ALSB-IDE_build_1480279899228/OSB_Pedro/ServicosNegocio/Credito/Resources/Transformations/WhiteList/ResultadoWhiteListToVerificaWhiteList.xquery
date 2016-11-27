<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery><![CDATA[(:: pragma bea:global-element-parameter parameter="$resultadoWhiteList1" element="ns2:ResultadoWhiteList" location="../../Interfaces/Schemas/InternalWhiteList.xsd" ::)
(:: pragma bea:global-element-return element="ns1:resultadoVerificaWhiteList" location="../../../../../EBS/Credito/xsd/ParametrosCredito.xsd" ::)

declare namespace ns2 = "http://whitelist.com.br/SN/WhiteList";
declare namespace ns1 = "http://pucminas.br/SN/Credito";
declare namespace ns0 = "http://pucminas.br/MC/SOA/Pedro";
declare namespace xf = "http://tempuri.org/OSB_Pedro/ServicosNegocio/Credito/Resources/Transformations/ResultadoWhiteListTo/";

declare function xf:ResultadoWhiteListTo($resultadoWhiteList1 as element(ns2:ResultadoWhiteList))
    as element(ns1:resultadoVerificaWhiteList) {
        <ns1:resultadoVerificaWhiteList>
            <ns1:mensagemRetorno>
                <ns0:descricao>{ data($resultadoWhiteList1/ns2:num_documento) }</ns0:descricao>
                <ns0:isAtivo>{ data($resultadoWhiteList1/ns2:indica_white_list) }</ns0:isAtivo>
            </ns1:mensagemRetorno>
        </ns1:resultadoVerificaWhiteList>
};

declare variable $resultadoWhiteList1 as element(ns2:ResultadoWhiteList) external;

xf:ResultadoWhiteListTo($resultadoWhiteList1)]]></con:xquery>
    <con:dependency location="../../Interfaces/Schemas/InternalWhiteList.xsd">
        <con:schema ref="OSB_Pedro/ServicosNegocio/Credito/Resources/Interfaces/Schemas/InternalWhiteList"/>
    </con:dependency>
    <con:dependency location="../../../../../EBS/Credito/xsd/ParametrosCredito.xsd">
        <con:schema ref="OSB_Pedro/EBS/Credito/xsd/ParametrosCredito"/>
    </con:dependency>
</con:xqueryEntry>