package com.newexercise.service;

import com.newexercise.model.Customer;
import sun.security.x509.CertificateSubjectName;

import java.util.List;

public interface CustomerService {

    void addCustomer(Customer customer);

    Customer getCustomerById(int customerId);

    List<Customer> getAllCustomers();

    Customer getCustomerByUsername(String username);

}
