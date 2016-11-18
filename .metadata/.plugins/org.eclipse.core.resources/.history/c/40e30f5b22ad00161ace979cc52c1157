(:: pragma bea:global-element-parameter parameter="$resultadoCreditLegacy1" element="ns0:ResultadoCreditLegacy" location="../Interfaces/Schemas/CreditLegacy.xsd" ::)
(:: pragma bea:global-element-return element="ns2:resultadoVerificaCreditoInterno" location="../../../../EBS/Credito/xsd/ParametrosCredito.xsd" ::)

declare namespace ns2 = "http://pucminas.br/SN/Credito";
declare namespace ns1 = "http://pucminas.br/MC/SOA/Pedro";
declare namespace ns0 = "http://creditlegacy.com.br/SN/CreditLegacy";
declare namespace xf = "http://tempuri.org/OSB_Pedro/ServicosNegocio/Credito/Resources/Transformations/CreditLegacyResponseToCreditoInternoResponse/";

declare function xf:CreditLegacyResponseToCreditoInternoResponse($resultadoCreditLegacy1 as element(ns0:ResultadoCreditLegacy))
    as element(ns2:resultadoVerificaCreditoInterno) {
        <ns2:resultadoVerificaCreditoInterno>
            <ns2:credito>
                <ns1:pessoa>
                    <ns1:cnpj>{ data($resultadoCreditLegacy1/ns0:cpf) }</ns1:cnpj>
                </ns1:pessoa>
            </ns2:credito>
        </ns2:resultadoVerificaCreditoInterno>
};

declare variable $resultadoCreditLegacy1 as element(ns0:ResultadoCreditLegacy) external;

xf:CreditLegacyResponseToCreditoInternoResponse($resultadoCreditLegacy1)
