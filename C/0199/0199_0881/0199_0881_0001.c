#include <stdlib.h>
extern signed char v1 (unsigned short, signed char);
extern signed char (*v2) (unsigned short, signed char);
extern signed char v3 (signed short, signed int, signed char);
extern signed char (*v4) (signed short, signed int, signed char);
extern signed short v5 (signed short, signed short);
extern signed short (*v6) (signed short, signed short);
extern signed int v9 (signed short, unsigned char, signed short);
extern signed int (*v10) (signed short, unsigned char, signed short);
signed short v11 (unsigned int, signed char);
signed short (*v12) (unsigned int, signed char) = v11;
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern signed char v17 (signed short);
extern signed char (*v18) (signed short);
extern signed char v19 (signed int, unsigned short, signed int, signed char);
extern signed char (*v20) (signed int, unsigned short, signed int, signed char);
extern signed short v21 (unsigned int, signed char, signed int, signed char);
extern signed short (*v22) (unsigned int, signed char, signed int, signed char);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern unsigned char v25 (unsigned char, signed int);
extern unsigned char (*v26) (unsigned char, signed int);
extern signed short v27 (unsigned char);
extern signed short (*v28) (unsigned char);
unsigned int v29 (signed char, signed short);
unsigned int (*v30) (signed char, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v60 = 0;
unsigned short v59 = 2;
unsigned char v58 = 7;

unsigned int v29 (signed char v61, signed short v62)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
signed char v65 = 0;
signed int v64 = 1;
unsigned int v63 = 6U;
trace++;
switch (trace)
{
case 8: 
return v63;
case 10: 
return v63;
default: abort ();
}
}
}
}

signed short v11 (unsigned int v66, signed char v67)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
unsigned char v70 = 4;
signed char v69 = 2;
unsigned char v68 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
