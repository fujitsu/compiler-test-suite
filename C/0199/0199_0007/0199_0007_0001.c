#include <stdlib.h>
extern signed short v3 (unsigned short, unsigned char);
extern signed short (*v4) (unsigned short, unsigned char);
extern void v5 (unsigned short);
extern void (*v6) (unsigned short);
extern unsigned char v7 (unsigned short, signed char);
extern unsigned char (*v8) (unsigned short, signed char);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern signed int v11 (signed char, signed char, unsigned int);
extern signed int (*v12) (signed char, signed char, unsigned int);
extern unsigned int v13 (signed char);
extern unsigned int (*v14) (signed char);
extern unsigned char v15 (unsigned short, unsigned int);
extern unsigned char (*v16) (unsigned short, unsigned int);
signed char v17 (signed char, signed char, unsigned int, signed char);
signed char (*v18) (signed char, signed char, unsigned int, signed char) = v17;
extern signed int v19 (signed int);
extern signed int (*v20) (signed int);
extern unsigned short v21 (signed int, signed int, unsigned char);
extern unsigned short (*v22) (signed int, signed int, unsigned char);
extern unsigned short v23 (unsigned short, signed int);
extern unsigned short (*v24) (unsigned short, signed int);
signed int v27 (unsigned char);
signed int (*v28) (unsigned char) = v27;
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v60 = 2;
signed short v59 = 0;
unsigned short v58 = 2;

signed int v27 (unsigned char v61)
{
history[history_index++] = (int)v61;
{
for (;;) {
unsigned int v64 = 7U;
unsigned int v63 = 2U;
signed int v62 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v17 (signed char v65, signed char v66, unsigned int v67, signed char v68)
{
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
unsigned int v71 = 0U;
unsigned char v70 = 2;
signed int v69 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
