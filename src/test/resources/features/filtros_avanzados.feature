Feature: Búsqueda de ofertas de empleo con filtros avanzados en Indeed

  Scenario Outline: Buscar ofertas con filtros de profesión, ciudad y tipo de empleo
    Given El usuario está en la página de inicio de Indeed
    When El usuario busca "<profesion>" en la barra de búsqueda
    And El usuario selecciona "<ciudad>" como ubicación
    And El usuario filtra por Tipo de Empleo como "<tipo de empleo>"
    And El usuario hace clic en el botón de búsqueda
    Then Se deben mostrar resultados relacionados con "<profesion>" en "<ciudad>" con el filtro de "<tipo de empleo>"
    And Los resultados deben cumplir con todos los filtros seleccionados
    Examples:
      | profesion                 | ciudad       | tipo de empleo  |
      | Desarrollador de Software | Medellin     | Tiempo completo |
      | Diseñador Gráfico         | Bogotá       | Medio tiempo    |
      | Analista de Datos         | Cali         | Tiempo completo |
      | Ingeniero de Redes        | Medellin     | Contrato        |
      | Gerente de Ventas         | Barranquilla | Tiempo completo |
