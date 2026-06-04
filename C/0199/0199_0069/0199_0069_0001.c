#include <stdlib.h>
extern signed short v1 (signed char, unsigned int);
extern signed short (*v2) (signed char, unsigned int);
unsigned short v3 (unsigned int, unsigned char, unsigned short, unsigned short);
unsigned short (*v4) (unsigned int, unsigned char, unsigned short, unsigned short) = v3;
extern signed short v5 (signed int);
extern signed short (*v6) (signed int);
extern signed int v7 (signed int, signed short);
extern signed int (*v8) (signed int, signed short);
signed int v11 (unsigned int, unsigned char);
signed int (*v12) (unsigned int, unsigned char) = v11;
extern signed short v13 (signed short, signed char);
extern signed short (*v14) (signed short, signed char);
extern unsigned short v17 (unsigned short, signed short, unsigned char, signed short);
extern unsigned short (*v18) (unsigned short, signed short, unsigned char, signed short);
extern unsigned short v19 (signed short, signed short, unsigned short);
extern unsigned short (*v20) (signed short, signed short, unsigned short);
extern signed char v21 (signed char, unsigned char, signed char);
extern signed char (*v22) (signed char, unsigned char, signed char);
signed char v23 (unsigned char, unsigned short);
signed char (*v24) (unsigned char, unsigned short) = v23;
extern signed short v25 (void);
extern signed short (*v26) (void);
extern void v27 (void);
extern void (*v28) (void);
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v55 = 3;
signed short v54 = 2;
unsigned int v53 = 1U;

signed char v23 (unsigned char v56, unsigned short v57)
{
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
{
for (;;) {
signed short v60 = 3;
unsigned int v59 = 6U;
signed char v58 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (unsigned int v61, unsigned char v62)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
unsigned short v65 = 4;
signed char v64 = -2;
signed int v63 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (unsigned int v66, unsigned char v67, unsigned short v68, unsigned short v69)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
signed int v72 = 1;
signed short v71 = 0;
signed short v70 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
