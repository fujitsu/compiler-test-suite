#include <stdlib.h>
extern void v3 (signed int, signed short, unsigned char);
extern void (*v4) (signed int, signed short, unsigned char);
extern unsigned char v5 (unsigned short);
extern unsigned char (*v6) (unsigned short);
extern signed int v7 (unsigned int, signed short, unsigned int);
extern signed int (*v8) (unsigned int, signed short, unsigned int);
signed char v9 (unsigned int, unsigned short, unsigned short, unsigned short);
signed char (*v10) (unsigned int, unsigned short, unsigned short, unsigned short) = v9;
signed char v11 (signed char);
signed char (*v12) (signed char) = v11;
extern signed int v13 (unsigned char, signed char, signed char, unsigned short);
extern signed int (*v14) (unsigned char, signed char, signed char, unsigned short);
extern signed char v15 (unsigned char, signed char, signed short);
extern signed char (*v16) (unsigned char, signed char, signed short);
extern void v17 (signed int, unsigned short, signed short, unsigned int);
extern void (*v18) (signed int, unsigned short, signed short, unsigned int);
extern unsigned char v19 (unsigned int);
extern unsigned char (*v20) (unsigned int);
extern signed int v21 (unsigned char, unsigned int, unsigned int, signed short);
extern signed int (*v22) (unsigned char, unsigned int, unsigned int, signed short);
signed int v23 (unsigned short, signed char);
signed int (*v24) (unsigned short, signed char) = v23;
extern signed short v25 (signed int, signed char);
extern signed short (*v26) (signed int, signed char);
extern signed char v27 (signed short, signed int, unsigned int, signed int);
extern signed char (*v28) (signed short, signed int, unsigned int, signed int);
void v29 (signed char);
void (*v30) (signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v92 = -2;
signed int v91 = -3;
signed short v90 = -2;

void v29 (signed char v93)
{
history[history_index++] = (int)v93;
{
for (;;) {
signed char v96 = 0;
signed char v95 = -2;
signed int v94 = 1;
trace++;
switch (trace)
{
case 4: 
return;
case 6: 
return;
case 8: 
return;
case 10: 
return;
default: abort ();
}
}
}
}

signed int v23 (unsigned short v97, signed char v98)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
signed int v101 = -1;
signed int v100 = 2;
signed int v99 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v11 (signed char v102)
{
history[history_index++] = (int)v102;
{
for (;;) {
signed short v105 = -1;
unsigned char v104 = 3;
unsigned int v103 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (unsigned int v106, unsigned short v107, unsigned short v108, unsigned short v109)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
unsigned char v112 = 6;
unsigned char v111 = 2;
signed int v110 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
