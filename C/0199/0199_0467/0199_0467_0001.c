#include <stdlib.h>
extern unsigned short v1 (signed short, signed char, signed char);
extern unsigned short (*v2) (signed short, signed char, signed char);
signed short v3 (unsigned char, signed char);
signed short (*v4) (unsigned char, signed char) = v3;
extern signed int v5 (signed short);
extern signed int (*v6) (signed short);
extern signed char v9 (unsigned short, unsigned char);
extern signed char (*v10) (unsigned short, unsigned char);
extern signed int v11 (unsigned int, signed short, unsigned int, unsigned short);
extern signed int (*v12) (unsigned int, signed short, unsigned int, unsigned short);
unsigned short v13 (unsigned int);
unsigned short (*v14) (unsigned int) = v13;
extern unsigned char v15 (unsigned int, signed short);
extern unsigned char (*v16) (unsigned int, signed short);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern unsigned short v19 (signed int, signed char, signed int);
extern unsigned short (*v20) (signed int, signed char, signed int);
extern signed short v21 (void);
extern signed short (*v22) (void);
extern signed char v23 (unsigned short, unsigned short);
extern signed char (*v24) (unsigned short, unsigned short);
extern unsigned char v25 (unsigned char, signed char);
extern unsigned char (*v26) (unsigned char, signed char);
extern unsigned int v27 (unsigned char, unsigned short, signed short);
extern unsigned int (*v28) (unsigned char, unsigned short, signed short);
extern unsigned short v29 (unsigned int);
extern unsigned short (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v67 = 1;
signed char v66 = 3;
signed short v65 = 0;

unsigned short v13 (unsigned int v68)
{
history[history_index++] = (int)v68;
{
for (;;) {
signed char v71 = -3;
signed char v70 = 2;
unsigned char v69 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (unsigned char v72, signed char v73)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
unsigned char v76 = 4;
unsigned short v75 = 2;
unsigned short v74 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
