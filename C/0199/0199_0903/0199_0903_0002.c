#include <stdlib.h>
extern unsigned char v1 (unsigned int, unsigned short);
extern unsigned char (*v2) (unsigned int, unsigned short);
extern unsigned int v3 (unsigned int, signed int, signed short);
extern unsigned int (*v4) (unsigned int, signed int, signed short);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
extern signed short v9 (signed short, signed char, signed short, unsigned int);
extern signed short (*v10) (signed short, signed char, signed short, unsigned int);
signed short v11 (signed char, unsigned char, signed int, signed int);
signed short (*v12) (signed char, unsigned char, signed int, signed int) = v11;
extern signed short v15 (unsigned char, unsigned int, signed char);
extern signed short (*v16) (unsigned char, unsigned int, signed char);
extern unsigned short v17 (signed short, unsigned int);
extern unsigned short (*v18) (signed short, unsigned int);
extern unsigned short v19 (signed short);
extern unsigned short (*v20) (signed short);
unsigned short v21 (signed short);
unsigned short (*v22) (signed short) = v21;
signed int v23 (signed short, signed short);
signed int (*v24) (signed short, signed short) = v23;
extern unsigned char v25 (signed char);
extern unsigned char (*v26) (signed char);
extern signed int v27 (unsigned int, signed char, signed short);
extern signed int (*v28) (unsigned int, signed char, signed short);
extern signed char v29 (unsigned int, signed int);
extern signed char (*v30) (unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v93 = 3;
unsigned char v92 = 4;
signed short v91 = -4;

signed int v23 (signed short v94, signed short v95)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
signed char v98 = 0;
unsigned int v97 = 4U;
signed char v96 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v21 (signed short v99)
{
history[history_index++] = (int)v99;
{
for (;;) {
signed short v102 = -1;
signed short v101 = -1;
unsigned short v100 = 0;
trace++;
switch (trace)
{
case 11: 
return 4;
default: abort ();
}
}
}
}

signed short v11 (signed char v103, unsigned char v104, signed int v105, signed int v106)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
signed short v109 = 2;
unsigned int v108 = 4U;
signed char v107 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
