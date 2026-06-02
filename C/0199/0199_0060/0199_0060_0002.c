#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern signed int v3 (signed char, signed int, signed int);
extern signed int (*v4) (signed char, signed int, signed int);
extern void v5 (unsigned char, signed short, unsigned short, unsigned int);
extern void (*v6) (unsigned char, signed short, unsigned short, unsigned int);
extern unsigned short v7 (signed int, signed int, signed short);
extern unsigned short (*v8) (signed int, signed int, signed short);
extern signed char v9 (void);
extern signed char (*v10) (void);
extern signed char v11 (unsigned short, unsigned int);
extern signed char (*v12) (unsigned short, unsigned int);
extern void v13 (signed short, signed char, signed short);
extern void (*v14) (signed short, signed char, signed short);
signed char v15 (unsigned char, signed int, unsigned char);
signed char (*v16) (unsigned char, signed int, unsigned char) = v15;
extern signed char v17 (void);
extern signed char (*v18) (void);
extern unsigned char v19 (unsigned char);
extern unsigned char (*v20) (unsigned char);
extern unsigned char v21 (unsigned int, signed char, signed short);
extern unsigned char (*v22) (unsigned int, signed char, signed short);
unsigned short v23 (unsigned short, unsigned short, signed int, unsigned char);
unsigned short (*v24) (unsigned short, unsigned short, signed int, unsigned char) = v23;
extern signed char v25 (void);
extern signed char (*v26) (void);
unsigned char v27 (unsigned short, signed char, signed int, unsigned short);
unsigned char (*v28) (unsigned short, signed char, signed int, unsigned short) = v27;
extern void v29 (unsigned char, signed int, unsigned short, signed int);
extern void (*v30) (unsigned char, signed int, unsigned short, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v85 = -4;
signed char v84 = 1;
unsigned char v83 = 4;

unsigned char v27 (unsigned short v86, signed char v87, signed int v88, unsigned short v89)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
unsigned char v92 = 2;
signed short v91 = -4;
signed int v90 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v23 (unsigned short v93, unsigned short v94, signed int v95, unsigned char v96)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
signed short v99 = -4;
unsigned short v98 = 2;
signed short v97 = 2;
trace++;
switch (trace)
{
case 4: 
return v94;
case 9: 
return v98;
default: abort ();
}
}
}
}

signed char v15 (unsigned char v100, signed int v101, unsigned char v102)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
signed char v105 = -1;
signed int v104 = 1;
signed char v103 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
