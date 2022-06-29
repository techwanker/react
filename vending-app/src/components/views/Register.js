import { useState } from "react";
import { Link } from "react-router-dom";
import Form from '../../utilities/Forms'

const Register = () => {

    const [name, setName] = useState('');
    const [email, setEmail] = useState('');
    const [addressLine1, setAddressLine1] = useState('');
    const [addressLine2, setAddressLine2] = useState('');
    const [city, setCity] = useState('');
    const [state, setStateCode] = useState('');
    const [postalCode, setPostalCode] = useState('');
    const [companyName, setCompanyName] = useState('');
    const [companyWebsite, setCompanyWebsite] = useState('');
    const [telephoneNumber, setTelephoneNumber] = useState('');
    const [validate, setValidate] = useState({});   // TODO what does this useState mean?
    const [password, setPassword] = useState('');
    const [showPassword, setShowPassword] = useState(false);   // TODO what does this useState mean?

    const validateRegister = () => {
        let isValid = true;

        let validator = Form.validator({
            name: {
                value: name,
                isRequired: true,
            },
            email: {
                value: email,
                isRequired: true,
                isEmail: true
            },
            password: {
                value: password,
                isRequired: true,
                minLength: 6
            },
            addressLine1: {
               value: addressLine1,
               isRequired: true,
            },
            addressLine2: {
                value: addressLine2,
                isRequired: true,
            },
            city: {
                value: city,
                isRequired: true,
            },
            stateCode: {
                value: stateCode,
                isRequired: true,
            },
            postalCode: {
                value: postalCode,
                isRequired: true,
            },
            companyName: {
                value: companyName,
                isRequired: true,
            },
            telephoneNumber: {
                value: telephoneNumber,
                isRequired: true,
            },
            companyWebsite: {
                value: companyWebsite,
                isRequired: true,
            },
        });

        if (validator !== null) {
            setValidate({
                validate: validator.errors
            })

            isValid = false
        }
        return isValid;
    }

    const register = (e) => {
        e.preventDefault();

        const validate = validateRegister();

        if (validate) {
            setValidate({});
            setName('');
            setEmail('');
            setPassword('');
            alert('Successfully Register User');
        }
    }

        if (validator !== null) {
            setValidate({
                validate: validator.errors
            })

            isValid = false
        }
        return isValid;
    }

    const register = (e) => {
        e.preventDefault();

        const validate = validateRegister();

        if (validate) {
            setValidate({});
            setName('');
            setEmail('');
            setPassword('');
            alert('Successfully Register User');
        }
    }

    const togglePassword = (e) => {
        if (showPassword) {
            setShowPassword(false);
        } else {
            setShowPassword(true)
        }
    }

    return (
        <div className="row g-0 auth-wrapper">
            <div className="col-12 col-md-5 col-lg-6 h-100 auth-background-col">
                <div className="auth-background-holder"></div>
                <div className="auth-background-mask"></div>
            </div>

            <div className="col-12 col-md-7 col-lg-6 auth-main-col text-center">
                <div className="d-flex flex-column align-content-end">
                    <div className="auth-body mx-auto">
                        <p>Create your Account</p>
                        <div className="auth-form-container text-start">
                            <form className="auth-form" method="POST" onSubmit={register} autoComplete={'off'}>

                                <div className="name mb-3">
                                    <input type="text"
                                        className={`form-control ${validate.validate && validate.validate.name ? 'is-invalid ' : ''}`}
                                        id="name"
                                        name="name"
                                        value={name}
                                        placeholder="Name"
                                        onChange={(e) => setName(e.target.value)}
                                    />

                                    <div className={`invalid-feedback text-start ${(validate.validate && validate.validate.name) ? 'd-block' : 'd-none'}`} >
                                        {(validate.validate && validate.validate.name) ? validate.validate.name[0] : ''}
                                    </div>
                                </div>

                                <div className="email mb-3">
                                    <input type="email"
                                        className={`form-control ${validate.validate && validate.validate.email ? 'is-invalid ' : ''}`}
                                        id="email"
                                        name="email"
                                        value={email}
                                        placeholder="Email"
                                        onChange={(e) => setEmail(e.target.value)}
                                    />

                                    <div className={`invalid-feedback text-start ${(validate.validate && validate.validate.email) ? 'd-block' : 'd-none'}`} >
                                        {(validate.validate && validate.validate.email) ? validate.validate.email[0] : ''}
                                    </div>
                                </div>

                                <div className="website mb-3">
                                    <input type="website"
                                        className={`form-control ${validate.validate && validate.validate.website ? 'is-invalid ' : ''}`}
                                        id="website"
                                        name="website"
                                        value={website}
                                        placeholder="website"
                                        onChange={(e) => setWebsite(e.target.value)}
                                    />

                                    <div className={`invalid-feedback text-start ${(validate.validate && validate.validate.website) ? 'd-block' : 'd-none'}`} >
                                        {(validate.validate && validate.validate.website) ? validate.validate.website[0] : ''}
                                    </div>
                                </div>

                                <div className="password mb-3">
                                    <div className="input-group">
                                        <input type={showPassword ? 'text' : 'password'}
                                            className={`form-control ${validate.validate && validate.validate.password ? 'is-invalid ' : ''}`}
                                            name="password"
                                            id="password"
                                            value={password}
                                            placeholder="Password"
                                            onChange={(e) => setPassword(e.target.value)}
                                        />

                                        <button type="button" className="btn btn-outline-primary btn-sm" onClick={(e) => togglePassword(e)} ><i className={showPassword ? 'far fa-eye' : 'far fa-eye-slash'} ></i> </button>

                                        <div className={`invalid-feedback text-start ${(validate.validate && validate.validate.password) ? 'd-block' : 'd-none'}`} >
                                            {(validate.validate && validate.validate.password) ? validate.validate.password[0] : ''}
                                        </div>
                                    </div>
                                </div>

                                <div className="companyWebsite mb-3">
                                    <input type="companyWebsite"
                                        className={`form-control ${validate.validate && validate.validate.companyWebsite ? 'is-invalid ' : ''}`}
                                        id="companyWebsite"
                                        name="companyWebsite"
                                        value={companyWebsite}
                                        placeholder="companyWebsite"
                                        onChange={(e) => setCompanyWebsite(e.target.value)}
                                    />

                                    <div className={`invalid-feedback text-start ${(validate.validate && validate.validate.companyWebsite) ? 'd-block' : 'd-none'}`} >
                                        {(validate.validate && validate.validate.companyWebsite) ? validate.validate.companyWebsite[0] : ''}
                                    </div>
                                </div>

                                <div className="companyName mb-3">
                                    <input type="companyName"
                                        className={`form-control ${validate.validate && validate.validate.companyName ? 'is-invalid ' : ''}`}
                                        id="companyName"
                                        name="companyName"
                                        value={companyName}
                                        placeholder="companyName"
                                        onChange={(e) => setCompanyName(e.target.value)}
                                    />

                                    <div className={`invalid-feedback text-start ${(validate.validate && validate.validate.companyName) ? 'd-block' : 'd-none'}`} >
                                        {(validate.validate && validate.validate.companyName) ? validate.validate.companyName[0] : ''}
                                    </div>
                                </div>
                                <div className="text-center">
                                    <button type="submit" className="btn btn-primary w-100 theme-btn mx-auto">Sign Up</button>
                                </div>

                                <div className="addressLine1 mb-3">
                                    <input type="addressLine1"
                                        className={`form-control ${validate.validate && validate.validate.address_line_1 ? 'is-invalid ' : ''}`}
                                        id="addressLine1"
                                        name="addressLine1"
                                        value={addressLine1}
                                        placeholder="addressLine1"
                                        onChange={(e) => setAddressLine1(e.target.value)}
                                    />

                                    <div className={`invalid-feedback text-start ${(validate.validate && validate.validate.addressLine1) ? 'd-block' : 'd-none'}`} >
                                        {(validate.validate && validate.validate.addressLine1) ? validate.validate.addressLine1[0] : ''}
                                    </div>
                                </div>

                                <div className="addressLine2 mb-3">
                                    <input type="addressLine2"
                                        className={`form-control ${validate.validate && validate.validate.addressLine2 ? 'is-invalid ' : ''}`}
                                        id="addressLine2"
                                        name="addressLine2"
                                        value={addressLine2}
                                        placeholder="addressLine2"
                                        onChange={(e) => setAddressLine2(e.target.value)}
                                    />

                                    <div className={`invalid-feedback text-start ${(validate.validate && validate.validate.addressLine2) ? 'd-block' : 'd-none'}`} >
                                        {(validate.validate && validate.validate.addressLine2) ? validate.validate.addressLine2[0] : ''}
                                    </div>
                                </div>
                                <div className="text-center">
                                    <button type="submit" className="btn btn-primary w-100 theme-btn mx-auto">Sign Up</button>
                                </div>

                                <div className="city mb-3">
                                    <input type="city"
                                        className={`form-control ${validate.validate && validate.validate.city ? 'is-invalid ' : ''}`}
                                        id="city"
                                        name="city"
                                        value={city}
                                        placeholder="city"
                                        onChange={(e) => setCity(e.target.value)}
                                    />

                                    <div className={`invalid-feedback text-start ${(validate.validate && validate.validate.city) ? 'd-block' : 'd-none'}`} >
                                        {(validate.validate && validate.validate.city) ? validate.validate.city[0] : ''}
                                    </div>
                                </div>
                                <div className="text-center">
                                    <button type="submit" className="btn btn-primary w-100 theme-btn mx-auto">Sign Up</button>
                                </div>

                                <div className="state mb-3">
                                    <input type="state"
                                        className={`form-control ${validate.validate && validate.validate.state ? 'is-invalid ' : ''}`}
                                        id="state"
                                        name="state"
                                        value={state}
                                        placeholder="state"
                                        onChange={(e) => setStateCode(e.target.value)}
                                    />

                                    <div className={`invalid-feedback text-start ${(validate.validate && validate.validate.state) ? 'd-block' : 'd-none'}`} >
                                        {(validate.validate && validate.validate.state) ? validate.validate.state[0] : ''}
                                    </div>
                                </div>
                                <div className="text-center">
                                    <button type="submit" className="btn btn-primary w-100 theme-btn mx-auto">Sign Up</button>
                                </div>

                                <div className="postalCode mb-3">
                                    <input type="postalCode"
                                        className={`form-control ${validate.validate && validate.validate.postalCode ? 'is-invalid ' : ''}`}
                                        id="postalCode"
                                        name="postalCode"
                                        value={postalCode}
                                        placeholder="postal_code"
                                        onChange={(e) => setPostalCode(e.target.value)}
                                    />

                                    <div className={`invalid-feedback text-start ${(validate.validate && validate.validate.state) ? 'd-block' : 'd-none'}`} >
                                        {(validate.validate && validate.validate.postalCode) ? validate.validate.postalCode[0] : ''}
                                    </div>
                                </div>

                                <div className="telephoneNumber mb-3">
                                    <input type="telephoneNumber"
                                        className={`form-control ${validate.validate && validate.validate.telephoneNumber ? 'is-invalid ' : ''}`}
                                        id="telephoneNumber"
                                        name="telephoneNumber"
                                        value={telephoneNumber}
                                        placeholder="postal_code"
                                        onChange={(e) => setTelephoneNumber(e.target.value)}
                                    />

                                    <div className={`invalid-feedback text-start ${(validate.validate && validate.validate.state) ? 'd-block' : 'd-none'}`} >
                                        {(validate.validate && validate.validate.telephoneNumber) ? validate.validate.telephoneNumber[0] : ''}
                                    </div>
                                </div>

                                <div className="text-center">
                                    <button type="submit" className="btn btn-primary w-100 theme-btn mx-auto">Sign Up</button>
                                </div>
                            </form>

                            <hr />
                            <div className="auth-option text-center pt-2">Have an account? <Link className="text-link" to="/login" >Sign in</Link></div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    );
}

export default Register;