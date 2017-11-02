package ssm.service.servicelmpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ssm.dao.HostDao;
import ssm.entity.Hosts;
import ssm.service.HostService;

import java.util.List;
@Service
public class HostServicelmpl implements HostService {
    @Autowired
    private HostDao hostDao;
    @Override
    public List<Hosts> getList() {
        return hostDao.selectList();
    }

    @Override
    public void deleteItem(int id) {
         hostDao.deleteHost(id);
         return;
    }

    @Override
    public void addItem(Hosts hosts) {
        hostDao.insertHost(hosts);
    }
}
