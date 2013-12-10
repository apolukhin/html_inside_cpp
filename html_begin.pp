/*=============================================================================
    Copyright (c) 2013 Antony Polukhin
==============================================================================*/

#define HTML_HELPER                         \
        html_helper_val);                   \
        (void)b;                            \
        }                                   \
    }; /* html_first_commnet_remover */     \
} /*namespce detail */ 

#define TO_STRING(...) \
    #__VA_ARGS__
   
namespace detail {
    struct no_bool_warning;
    inline bool operator < (const no_bool_warning&, bool);

    template <int Line, class DelayInstantiation> 
    struct html_first_commnet_remover;

    template <class DelayInstantiation>
    struct html_first_commnet_remover<__COUNTER__, DelayInstantiation> {
        void operator()() {
            int html_helper_val = 1;
            detail::no_bool_warning nb;
            bool b = (nb
