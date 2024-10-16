package org.unipar.progamacaoWeb.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.unipar.progamacaoWeb.model.ClienteModel;

@Repository
public interface ClienteRepository extends JpaRepository<ClienteModel, Long> {
}
