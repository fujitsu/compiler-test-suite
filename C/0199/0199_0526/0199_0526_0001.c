#include <stdlib.h>
extern signed int v1 (unsigned int, unsigned short, unsigned char, signed int);
extern signed int (*v2) (unsigned int, unsigned short, unsigned char, signed int);
signed int v3 (signed char, signed char, signed int, unsigned char);
signed int (*v4) (signed char, signed char, signed int, unsigned char) = v3;
extern void v5 (void);
extern void (*v6) (void);
extern void v7 (unsigned int, unsigned short, unsigned int);
extern void (*v8) (unsigned int, unsigned short, unsigned int);
signed int v9 (unsigned short, unsigned short, unsigned char, signed char);
signed int (*v10) (unsigned short, unsigned short, unsigned char, signed char) = v9;
extern void v11 (unsigned short, unsigned short);
extern void (*v12) (unsigned short, unsigned short);
extern signed short v15 (unsigned int, signed int);
extern signed short (*v16) (unsigned int, signed int);
extern unsigned char v17 (unsigned short);
extern unsigned char (*v18) (unsigned short);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern void v23 (unsigned int, unsigned short, signed short, unsigned char);
extern void (*v24) (unsigned int, unsigned short, signed short, unsigned char);
extern unsigned short v25 (signed short, unsigned int, signed int, unsigned int);
extern unsigned short (*v26) (signed short, unsigned int, signed int, unsigned int);
signed char v27 (unsigned char, unsigned int);
signed char (*v28) (unsigned char, unsigned int) = v27;
extern signed short v29 (signed char, unsigned int, unsigned int);
extern signed short (*v30) (signed char, unsigned int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed short v63 = 0;
signed int v62 = 0;
signed int v61 = 2;

signed char v27 (unsigned char v64, unsigned int v65)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
unsigned int v68 = 2U;
signed int v67 = 0;
unsigned int v66 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (unsigned short v69, unsigned short v70, unsigned char v71, signed char v72)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
signed int v75 = 0;
unsigned int v74 = 1U;
unsigned int v73 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (signed char v76, signed char v77, signed int v78, unsigned char v79)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
signed char v82 = 1;
unsigned int v81 = 1U;
unsigned int v80 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
