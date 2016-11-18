(:: pragma bea:global-element-parameter parameter="$parametrosVerificaCreditoExterno1" element="ns2:parametrosVerificaCreditoExterno" location="../../../../../EBS/Credito/xsd/ParametrosCredito.xsd" ::)
(:: pragma bea:global-element-return element="ns0:ParametrosSerasa" location="../../Interfaces/Schemas/Serasa.xsd" ::)

declare namespace ns2 = "http://pucminas.br/SN/Credito";
declare namespace ns1 = "http://pucminas.br/MC/SOA/Pedro";
declare namespace ns0 = "http://serasa.com.br/SN/Serasa";
declare namespace xf = "http://tempuri.org/OSB_Pedro/ServicosNegocio/Credito/Resources/Transformations/Serasa/VerificaCreditoExternoToParametrosSerasa/";

declare function xf:VerificaCreditoExternoToParametrosSerasa($parametrosVerificaCreditoExterno1 as element(ns2:parametrosVerificaCreditoExterno))
    as element(ns0:ParametrosSerasa) {
        <ns0:ParametrosSerasa>
            <ns0:num_documento>{ data($parametrosVerificaCreditoExterno1/ns2:pessoa/ns1:cpf) }</ns0:num_documento>
            <ns0:dt_nascimento>{ data($parametrosVerificaCreditoExterno1/ns2:pessoa/ns1:dataNascimento) }</ns0:dt_nascimento>
        </ns0:ParametrosSerasa>
};

declare variable $parametrosVerificaCreditoExterno1 as element(ns2:parametrosVerificaCreditoExterno) external;

xf:VerificaCreditoExternoToParametrosSerasa($parametrosVerificaCreditoExterno1)
