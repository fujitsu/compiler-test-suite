#include <stdio.h>
#include <stdlib.h>
static unsigned short v1 (unsigned short, unsigned short, signed char);
static unsigned short (*v2) (unsigned short, unsigned short, signed char) = v1;
extern unsigned short v3 (signed int, signed short, unsigned char);
extern unsigned short (*v4) (signed int, signed short, unsigned char);
unsigned char v5 (signed int, unsigned int);
unsigned char (*v6) (signed int, unsigned int) = v5;
extern signed int v7 (signed char);
extern signed int (*v8) (signed char);
extern unsigned int v9 (signed int, unsigned int, unsigned char, unsigned short);
extern unsigned int (*v10) (signed int, unsigned int, unsigned char, unsigned short);
signed int v11 (signed char, unsigned int, signed char);
signed int (*v12) (signed char, unsigned int, signed char) = v11;
extern signed int v13 (signed int, unsigned char, unsigned char, signed int);
extern signed int (*v14) (signed int, unsigned char, unsigned char, signed int);
extern unsigned short v15 (unsigned short, unsigned char);
extern unsigned short (*v16) (unsigned short, unsigned char);
extern unsigned short v17 (unsigned int, unsigned char);
extern unsigned short (*v18) (unsigned int, unsigned char);
extern signed char v19 (void);
extern signed char (*v20) (void);
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
extern signed int v23 (unsigned short, unsigned char, unsigned char);
extern signed int (*v24) (unsigned short, unsigned char, unsigned char);
unsigned char v25 (signed short);
unsigned char (*v26) (signed short) = v25;
unsigned int v27 (signed int, signed short, signed int, signed short);
unsigned int (*v28) (signed int, signed short, signed int, signed short) = v27;
extern signed short v29 (signed short);
extern signed short (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 0;
unsigned int v32 = 0U;
signed short v31 = 1;

unsigned int v27 (signed int v34, signed short v35, signed int v36, signed short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned short v40 = 1;
unsigned short v39 = 1;
signed short v38 = 1;
trace++;
switch (trace)
{
case 5: 
return 5U;
default: abort ();
}
}
}
}

unsigned char v25 (signed short v41)
{
history[history_index++] = (int)v41;
{
for (;;) {
unsigned int v44 = 4U;
signed int v43 = 1;
unsigned char v42 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (signed char v45, unsigned int v46, signed char v47)
{
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
unsigned int v50 = 1U;
signed short v49 = 0;
unsigned short v48 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (signed int v51, unsigned int v52)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
{
for (;;) {
signed short v55 = 0;
unsigned short v54 = 0;
unsigned char v53 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v1 (unsigned short v56, unsigned short v57, signed char v58)
{
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
{
for (;;) {
unsigned short v61 = 4;
signed int v60 = 3;
signed char v59 = 0;
trace++;
switch (trace)
{
case 0: 
{
signed char v62;
signed int v63;
v62 = v58 - v59;
v63 = v7 (v62);
history[history_index++] = (int)v63;
}
break;
case 12: 
return v56;
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
unsigned short v66;
unsigned short v67;
signed char v68;
unsigned short v69;
v66 = v33 + 6;
v67 = 6 + 7;
v68 = 2 - 0;
v69 = v1 (v66, v67, v68);
history[history_index++] = (int)v69;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
