#include <stdlib.h>
extern signed short v3 (unsigned short, unsigned char, signed char);
extern signed short (*v4) (unsigned short, unsigned char, signed char);
extern signed int v5 (signed int);
extern signed int (*v6) (signed int);
extern unsigned char v7 (signed int, signed int, unsigned int, unsigned char);
extern unsigned char (*v8) (signed int, signed int, unsigned int, unsigned char);
extern unsigned char v9 (unsigned char, unsigned char, unsigned int);
extern unsigned char (*v10) (unsigned char, unsigned char, unsigned int);
signed int v11 (signed short, signed int);
signed int (*v12) (signed short, signed int) = v11;
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
unsigned int v15 (signed char);
unsigned int (*v16) (signed char) = v15;
unsigned short v17 (signed short, unsigned int, unsigned char);
unsigned short (*v18) (signed short, unsigned int, unsigned char) = v17;
extern unsigned int v19 (signed int, signed int, unsigned short, unsigned char);
extern unsigned int (*v20) (signed int, signed int, unsigned short, unsigned char);
extern signed int v21 (signed short);
extern signed int (*v22) (signed short);
extern unsigned int v23 (unsigned int);
extern unsigned int (*v24) (unsigned int);
extern signed char v25 (signed short, unsigned char);
extern signed char (*v26) (signed short, unsigned char);
extern void v27 (unsigned short, unsigned int);
extern void (*v28) (unsigned short, unsigned int);
extern signed char v29 (signed char);
extern signed char (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
signed char v66 = -3;
signed int v65 = 1;
unsigned short v64 = 6;

unsigned short v17 (signed short v67, unsigned int v68, unsigned char v69)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
unsigned int v72 = 3U;
signed char v71 = 0;
unsigned int v70 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v15 (signed char v73)
{
history[history_index++] = (int)v73;
{
for (;;) {
unsigned char v76 = 3;
unsigned short v75 = 2;
unsigned char v74 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (signed short v77, signed int v78)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
signed char v81 = 1;
signed char v80 = 1;
signed char v79 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
