xquery version "1.0" encoding "UTF-8";
(:: pragma bea:global-element-return element="ns0:resultadoScoreCliente" location="../../../../../EBS/Credito/xsd/ParametrosCreditoGeral.xsd" ::)

declare namespace xf = "http://tempuri.org/OSB_Pedro/ServicosNegocio/Credito/Resources/Transformations/CreditoGeral/ResultadoScoreCliente/";
declare namespace ns0 = "http://pucminas.br/SN/Credito";

declare function xf:ResultadoScoreCliente()
as element(ns0:resultadoScoreCliente) {
    <ns0:resultadoScoreCliente/>
};


xf:ResultadoScoreCliente()
