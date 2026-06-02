#include <stdlib.h>
signed short v3 (signed short, unsigned short, signed int, signed short);
signed short (*v4) (signed short, unsigned short, signed int, signed short) = v3;
extern unsigned short v5 (unsigned short, signed short, unsigned int);
extern unsigned short (*v6) (unsigned short, signed short, unsigned int);
extern unsigned short v7 (unsigned int, unsigned short);
extern unsigned short (*v8) (unsigned int, unsigned short);
signed char v9 (signed short, signed char, signed char);
signed char (*v10) (signed short, signed char, signed char) = v9;
extern signed short v11 (unsigned short, unsigned int, unsigned short);
extern signed short (*v12) (unsigned short, unsigned int, unsigned short);
extern signed int v13 (unsigned short, unsigned int, unsigned int);
extern signed int (*v14) (unsigned short, unsigned int, unsigned int);
extern signed char v15 (void);
extern signed char (*v16) (void);
extern unsigned char v17 (signed short, signed short);
extern unsigned char (*v18) (signed short, signed short);
extern unsigned short v19 (signed char);
extern unsigned short (*v20) (signed char);
extern signed char v21 (signed short, unsigned char, unsigned short, unsigned short);
extern signed char (*v22) (signed short, unsigned char, unsigned short, unsigned short);
extern signed short v23 (signed int, signed int, unsigned short, unsigned char);
extern signed short (*v24) (signed int, signed int, unsigned short, unsigned char);
extern unsigned short v25 (signed char, unsigned char);
extern unsigned short (*v26) (signed char, unsigned char);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern unsigned int v29 (unsigned char, unsigned int, signed int, signed short);
extern unsigned int (*v30) (unsigned char, unsigned int, signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v66 = 1;
unsigned int v65 = 1U;
signed short v64 = -2;

signed char v9 (signed short v67, signed char v68, signed char v69)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
unsigned char v72 = 3;
unsigned char v71 = 3;
unsigned char v70 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (signed short v73, unsigned short v74, signed int v75, signed short v76)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
unsigned short v79 = 2;
unsigned int v78 = 0U;
signed short v77 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
