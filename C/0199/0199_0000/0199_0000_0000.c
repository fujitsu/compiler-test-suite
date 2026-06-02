#include <stdio.h>
#include <stdlib.h>
static signed int v1 (signed char, unsigned char);
static signed int (*v2) (signed char, unsigned char) = v1;
unsigned int v3 (unsigned short);
unsigned int (*v4) (unsigned short) = v3;
signed int v5 (unsigned int, unsigned char, signed short);
signed int (*v6) (unsigned int, unsigned char, signed short) = v5;
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
extern unsigned short v9 (unsigned short, signed short);
extern unsigned short (*v10) (unsigned short, signed short);
extern signed int v11 (void);
extern signed int (*v12) (void);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
unsigned char v15 (unsigned short, unsigned int, signed short);
unsigned char (*v16) (unsigned short, unsigned int, signed short) = v15;
signed short v17 (signed int, unsigned short, signed char, unsigned int);
signed short (*v18) (signed int, unsigned short, signed char, unsigned int) = v17;
extern unsigned char v19 (unsigned char, signed int);
extern unsigned char (*v20) (unsigned char, signed int);
signed int v21 (signed int);
signed int (*v22) (signed int) = v21;
extern signed char v23 (signed char);
extern signed char (*v24) (signed char);
extern unsigned int v25 (signed int, signed int);
extern unsigned int (*v26) (signed int, signed int);
unsigned short v27 (unsigned char, unsigned int, signed char);
unsigned short (*v28) (unsigned char, unsigned int, signed char) = v27;
extern signed short v29 (signed int, signed short, signed int);
extern signed short (*v30) (signed int, signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 3;
signed char v32 = -1;
unsigned char v31 = 3;

unsigned short v27 (unsigned char v34, unsigned int v35, signed char v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned char v39 = 1;
signed short v38 = -3;
signed char v37 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v21 (signed int v40)
{
history[history_index++] = (int)v40;
{
for (;;) {
signed int v43 = -4;
signed int v42 = -2;
unsigned short v41 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v17 (signed int v44, unsigned short v45, signed char v46, unsigned int v47)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
unsigned short v50 = 0;
signed char v49 = -1;
unsigned char v48 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (unsigned short v51, unsigned int v52, signed short v53)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
signed int v56 = -3;
unsigned short v55 = 0;
unsigned int v54 = 4U;
trace++;
switch (trace)
{
case 2: 
return 1;
case 4: 
return 3;
case 6: 
return 1;
case 8: 
return 2;
default: abort ();
}
}
}
}

signed int v5 (unsigned int v57, unsigned char v58, signed short v59)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
signed int v62 = 1;
unsigned char v61 = 6;
unsigned char v60 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (unsigned short v63)
{
history[history_index++] = (int)v63;
{
for (;;) {
unsigned short v66 = 0;
unsigned short v65 = 3;
unsigned int v64 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed int v1 (signed char v67, unsigned char v68)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
unsigned short v71 = 7;
signed char v70 = -3;
unsigned char v69 = 7;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v72;
v72 = v13 ();
history[history_index++] = (int)v72;
}
break;
case 10: 
{
unsigned short v73;
v73 = v7 ();
history[history_index++] = (int)v73;
}
break;
case 12: 
return -3;
default: abort ();
}
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
signed char v76;
unsigned char v77;
signed int v78;
v76 = v32 - 3;
v77 = v31 + v31;
v78 = v1 (v76, v77);
history[history_index++] = (int)v78;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
