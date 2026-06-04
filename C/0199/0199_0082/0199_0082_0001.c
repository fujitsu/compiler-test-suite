#include <stdlib.h>
extern unsigned short v3 (signed int, signed short, unsigned char);
extern unsigned short (*v4) (signed int, signed short, unsigned char);
extern unsigned char v5 (signed int, unsigned int);
extern unsigned char (*v6) (signed int, unsigned int);
extern signed int v7 (signed char);
extern signed int (*v8) (signed char);
extern unsigned int v9 (signed int, unsigned int, unsigned char, unsigned short);
extern unsigned int (*v10) (signed int, unsigned int, unsigned char, unsigned short);
extern signed int v11 (signed char, unsigned int, signed char);
extern signed int (*v12) (signed char, unsigned int, signed char);
extern signed int v13 (signed int, unsigned char, unsigned char, signed int);
extern signed int (*v14) (signed int, unsigned char, unsigned char, signed int);
extern unsigned short v15 (unsigned short, unsigned char);
extern unsigned short (*v16) (unsigned short, unsigned char);
extern unsigned short v17 (unsigned int, unsigned char);
extern unsigned short (*v18) (unsigned int, unsigned char);
extern signed char v19 (void);
extern signed char (*v20) (void);
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
signed int v23 (unsigned short, unsigned char, unsigned char);
signed int (*v24) (unsigned short, unsigned char, unsigned char) = v23;
extern unsigned char v25 (signed short);
extern unsigned char (*v26) (signed short);
extern unsigned int v27 (signed int, signed short, signed int, signed short);
extern unsigned int (*v28) (signed int, signed short, signed int, signed short);
extern signed short v29 (signed short);
extern signed short (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v72 = 7U;
signed short v71 = -4;
unsigned int v70 = 2U;

signed int v23 (unsigned short v73, unsigned char v74, unsigned char v75)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
signed int v78 = 1;
unsigned int v77 = 3U;
unsigned short v76 = 7;
trace++;
switch (trace)
{
case 2: 
return v78;
case 8: 
return v78;
case 10: 
return 1;
default: abort ();
}
}
}
}
