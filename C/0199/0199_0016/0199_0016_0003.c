#include <stdlib.h>
extern unsigned char v3 (unsigned char);
extern unsigned char (*v4) (unsigned char);
extern signed short v5 (signed int, signed short);
extern signed short (*v6) (signed int, signed short);
extern signed char v7 (unsigned char);
extern signed char (*v8) (unsigned char);
unsigned int v9 (unsigned char, unsigned short, unsigned short, signed char);
unsigned int (*v10) (unsigned char, unsigned short, unsigned short, signed char) = v9;
extern signed int v11 (signed int, signed short);
extern signed int (*v12) (signed int, signed short);
extern unsigned short v13 (signed short, signed short, signed short, unsigned short);
extern unsigned short (*v14) (signed short, signed short, signed short, unsigned short);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern signed int v17 (signed short, signed short, unsigned int, signed char);
extern signed int (*v18) (signed short, signed short, unsigned int, signed char);
unsigned int v19 (signed char);
unsigned int (*v20) (signed char) = v19;
extern signed char v21 (signed char, signed int, unsigned int, unsigned char);
extern signed char (*v22) (signed char, signed int, unsigned int, unsigned char);
signed char v23 (signed char, unsigned char, unsigned char, unsigned short);
signed char (*v24) (signed char, unsigned char, unsigned char, unsigned short) = v23;
signed int v25 (signed char, signed char, signed char, signed int);
signed int (*v26) (signed char, signed char, signed char, signed int) = v25;
extern signed char v27 (void);
extern signed char (*v28) (void);
signed short v29 (signed short);
signed short (*v30) (signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v81 = 5U;
unsigned int v80 = 2U;
signed short v79 = 3;

signed short v29 (signed short v82)
{
history[history_index++] = (int)v82;
{
for (;;) {
unsigned int v85 = 6U;
unsigned char v84 = 2;
unsigned char v83 = 3;
trace++;
switch (trace)
{
case 2: 
return v82;
case 4: 
return v82;
case 6: 
return v82;
case 8: 
return v82;
case 10: 
return v82;
default: abort ();
}
}
}
}

signed int v25 (signed char v86, signed char v87, signed char v88, signed int v89)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
unsigned int v92 = 0U;
signed int v91 = -4;
signed short v90 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v23 (signed char v93, unsigned char v94, unsigned char v95, unsigned short v96)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
unsigned char v99 = 0;
unsigned int v98 = 5U;
unsigned int v97 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v19 (signed char v100)
{
history[history_index++] = (int)v100;
{
for (;;) {
unsigned char v103 = 3;
unsigned char v102 = 7;
unsigned short v101 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v9 (unsigned char v104, unsigned short v105, unsigned short v106, signed char v107)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
unsigned short v110 = 0;
unsigned short v109 = 1;
unsigned int v108 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
