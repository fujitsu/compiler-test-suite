#include <stdlib.h>
extern signed char v1 (unsigned short, unsigned char, signed int, unsigned short);
extern signed char (*v2) (unsigned short, unsigned char, signed int, unsigned short);
extern signed char v3 (signed int);
extern signed char (*v4) (signed int);
signed char v5 (signed int, unsigned char);
signed char (*v6) (signed int, unsigned char) = v5;
extern signed short v7 (unsigned short, signed char, unsigned short);
extern signed short (*v8) (unsigned short, signed char, unsigned short);
extern unsigned char v9 (unsigned char, signed short, signed int);
extern unsigned char (*v10) (unsigned char, signed short, signed int);
signed short v11 (signed short);
signed short (*v12) (signed short) = v11;
extern signed int v13 (unsigned int, signed short, unsigned short, unsigned int);
extern signed int (*v14) (unsigned int, signed short, unsigned short, unsigned int);
extern signed char v15 (unsigned char, unsigned int);
extern signed char (*v16) (unsigned char, unsigned int);
unsigned short v17 (unsigned int, unsigned int, unsigned char);
unsigned short (*v18) (unsigned int, unsigned int, unsigned char) = v17;
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern unsigned char v21 (signed int);
extern unsigned char (*v22) (signed int);
extern signed char v23 (void);
extern signed char (*v24) (void);
extern unsigned char v25 (signed int, signed int, signed short);
extern unsigned char (*v26) (signed int, signed int, signed short);
extern signed int v27 (signed char);
extern signed int (*v28) (signed char);
extern signed int v29 (signed char, signed int, signed short);
extern signed int (*v30) (signed char, signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v43 = -2;
signed char v42 = 3;
unsigned int v41 = 7U;

unsigned short v17 (unsigned int v44, unsigned int v45, unsigned char v46)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
{
for (;;) {
unsigned char v49 = 0;
signed int v48 = -4;
signed int v47 = -4;
trace++;
switch (trace)
{
case 3: 
return 7;
default: abort ();
}
}
}
}

signed short v11 (signed short v50)
{
history[history_index++] = (int)v50;
{
for (;;) {
unsigned short v53 = 2;
signed char v52 = 3;
unsigned int v51 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (signed int v54, unsigned char v55)
{
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
unsigned int v58 = 2U;
unsigned int v57 = 0U;
unsigned int v56 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
