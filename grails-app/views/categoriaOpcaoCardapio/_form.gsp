<%@ page import="br.sicogelan.caixa.CategoriaOpcaoCardapio" %>



<div class="fieldcontain ${hasErrors(bean: categoriaOpcaoCardapioInstance, field: 'descricao', 'error')} required">
	<label for="descricao">
		<g:message code="categoriaOpcaoCardapio.descricao.label" default="Descricao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descricao" required="" value="${categoriaOpcaoCardapioInstance?.descricao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: categoriaOpcaoCardapioInstance, field: 'arquivo', 'error')} required">
	<label for="arquivo">
		<g:message code="categoriaOpcaoCardapio.arquivo.label" default="Arquivo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="arquivo" name="arquivo.id" from="${br.sicogelan.comum.Arquivo.list()}" optionKey="id" required="" value="${categoriaOpcaoCardapioInstance?.arquivo?.id}" class="many-to-one"/>

</div>

