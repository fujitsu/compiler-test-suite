#include <stdlib.h>
unsigned char v1 (signed char, unsigned int);
unsigned char (*v2) (signed char, unsigned int) = v1;
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
extern signed char v5 (unsigned char, signed char, unsigned char, unsigned char);
extern signed char (*v6) (unsigned char, signed char, unsigned char, unsigned char);
extern signed int v7 (signed short, signed char, signed int);
extern signed int (*v8) (signed short, signed char, signed int);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
unsigned int v11 (void);
unsigned int (*v12) (void) = v11;
void v13 (signed int, signed short, signed short);
void (*v14) (signed int, signed short, signed short) = v13;
extern unsigned short v15 (unsigned int, signed int);
extern unsigned short (*v16) (unsigned int, signed int);
unsigned int v17 (signed int);
unsigned int (*v18) (signed int) = v17;
signed int v19 (unsigned short, unsigned char, unsigned int, unsigned int);
signed int (*v20) (unsigned short, unsigned char, unsigned int, unsigned int) = v19;
unsigned char v21 (unsigned int, unsigned int);
unsigned char (*v22) (unsigned int, unsigned int) = v21;
extern signed short v23 (signed short, signed int, signed char);
extern signed short (*v24) (signed short, signed int, signed char);
signed char v25 (void);
signed char (*v26) (void) = v25;
extern unsigned char v27 (signed short);
extern unsigned char (*v28) (signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v73 = 2;
signed char v72 = -1;
signed int v71 = 0;

signed char v25 (void)
{
{
for (;;) {
signed int v76 = -4;
unsigned char v75 = 1;
signed char v74 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v21 (unsigned int v77, unsigned int v78)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
unsigned int v81 = 0U;
unsigned int v80 = 0U;
unsigned char v79 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v19 (unsigned short v82, unsigned char v83, unsigned int v84, unsigned int v85)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
signed int v88 = -1;
signed int v87 = 1;
unsigned char v86 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v17 (signed int v89)
{
history[history_index++] = (int)v89;
{
for (;;) {
unsigned int v92 = 4U;
unsigned int v91 = 7U;
signed int v90 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (signed int v93, signed short v94, signed short v95)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
signed short v98 = 2;
unsigned char v97 = 1;
unsigned int v96 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (void)
{
{
for (;;) {
unsigned int v101 = 7U;
signed char v100 = -3;
unsigned short v99 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (signed char v102, unsigned int v103)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
signed char v106 = 3;
signed short v105 = -3;
unsigned char v104 = 7;
trace++;
switch (trace)
{
case 0: 
{
signed short v107;
signed char v108;
signed int v109;
signed int v110;
v107 = v105 + v105;
v108 = v102 + v106;
v109 = -2 - -2;
v110 = v7 (v107, v108, v109);
history[history_index++] = (int)v110;
}
break;
case 2: 
{
unsigned short v111;
v111 = v3 ();
history[history_index++] = (int)v111;
}
break;
case 12: 
return 6;
default: abort ();
}
}
}
}
