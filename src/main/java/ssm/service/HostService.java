package ssm.service;

import ssm.entity.Hosts;

import java.util.List;

public interface HostService {
    List<Hosts> getList();
    void deleteItem(int id);
    void addItem(Hosts hosts);
}
