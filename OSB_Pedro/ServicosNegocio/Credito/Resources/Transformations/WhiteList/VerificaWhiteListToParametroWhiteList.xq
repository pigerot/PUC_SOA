(:: pragma bea:global-element-parameter parameter="$parametrosVerificaWhiteList1" element="ns1:parametrosVerificaWhiteList" location="../../../../../EBS/Credito/xsd/ParametrosCredito.xsd" ::)
(:: pragma bea:global-element-return element="ns2:ParametrosWhiteList" location="../../Interfaces/Schemas/InternalWhiteList.xsd" ::)

declare namespace ns2 = "http://whitelist.com.br/SN/WhiteList";
declare namespace ns1 = "http://pucminas.br/SN/Credito";
declare namespace ns0 = "http://pucminas.br/MC/SOA/Pedro";
declare namespace xf = "http://tempuri.org/OSB_Pedro/ServicosNegocio/Credito/Resources/Transformations/VerificaWhiteListToParametroWhiteList/";

declare function xf:VerificaWhiteListToParametroWhiteList($parametrosVerificaWhiteList1 as element(ns1:parametrosVerificaWhiteList))
    as element(ns2:ParametrosWhiteList) {
        <ns2:ParametrosWhiteList>
            <ns2:num_documento>{ data($parametrosVerificaWhiteList1/ns1:pessoa/ns0:cpf) }</ns2:num_documento>
        </ns2:ParametrosWhiteList>
};

declare variable $parametrosVerificaWhiteList1 as element(ns1:parametrosVerificaWhiteList) external;

xf:VerificaWhiteListToParametroWhiteList($parametrosVerificaWhiteList1)
