(:: pragma bea:global-element-parameter parameter="$resultadoSerasa1" element="ns1:ResultadoSerasa" location="../../Interfaces/Schemas/Serasa.xsd" ::)
(:: pragma bea:global-element-return element="ns2:resultadoVerificaCreditoExterno" location="../../../../../EBS/Credito/xsd/ParametrosCredito.xsd" ::)

declare namespace ns2 = "http://pucminas.br/SN/Credito";
declare namespace ns1 = "http://serasa.com.br/SN/Serasa";
declare namespace ns0 = "http://pucminas.br/MC/SOA/Pedro";
declare namespace xf = "http://tempuri.org/OSB_Pedro/ServicosNegocio/Credito/Resources/Transformations/Serasa/ResultadoSerasaToVerificaCreditoExterno/";

declare function xf:ResultadoSerasaToVerificaCreditoExterno($resultadoSerasa1 as element(ns1:ResultadoSerasa))
    as element(ns2:resultadoVerificaCreditoExterno) {
        <ns2:resultadoVerificaCreditoExterno>
            <ns2:credito>
                <ns0:pessoa>
                    <ns0:cpf>{ data($resultadoSerasa1/ns1:num_documento) }</ns0:cpf>
                </ns0:pessoa>
                <ns0:score>{ data($resultadoSerasa1/ns1:valor_restricao) }</ns0:score>
            </ns2:credito>
        </ns2:resultadoVerificaCreditoExterno>
};

declare variable $resultadoSerasa1 as element(ns1:ResultadoSerasa) external;

xf:ResultadoSerasaToVerificaCreditoExterno($resultadoSerasa1)
