#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern unsigned char v3 (unsigned char, signed short);
extern unsigned char (*v4) (unsigned char, signed short);
extern signed short v5 (signed int, signed short, signed char, signed short);
extern signed short (*v6) (signed int, signed short, signed char, signed short);
signed short v7 (void);
signed short (*v8) (void) = v7;
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern unsigned char v11 (signed int);
extern unsigned char (*v12) (signed int);
signed short v13 (void);
signed short (*v14) (void) = v13;
unsigned short v15 (unsigned short, signed int);
unsigned short (*v16) (unsigned short, signed int) = v15;
unsigned char v17 (void);
unsigned char (*v18) (void) = v17;
void v19 (unsigned short, signed int, signed char, signed char);
void (*v20) (unsigned short, signed int, signed char, signed char) = v19;
extern signed short v21 (signed char, unsigned int, signed short, unsigned short);
extern signed short (*v22) (signed char, unsigned int, signed short, unsigned short);
extern signed short v23 (signed short, signed short);
extern signed short (*v24) (signed short, signed short);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern void v27 (unsigned char, unsigned int);
extern void (*v28) (unsigned char, unsigned int);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -3;
unsigned int v32 = 2U;
unsigned short v31 = 3;

void v19 (unsigned short v34, signed int v35, signed char v36, signed char v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned char v40 = 2;
unsigned short v39 = 7;
signed short v38 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v17 (void)
{
{
for (;;) {
signed char v43 = -2;
signed char v42 = 3;
signed int v41 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v15 (unsigned short v44, signed int v45)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
{
for (;;) {
unsigned int v48 = 0U;
signed int v47 = 0;
unsigned int v46 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v13 (void)
{
{
for (;;) {
unsigned int v51 = 6U;
unsigned char v50 = 5;
unsigned char v49 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (void)
{
{
for (;;) {
signed char v54 = -1;
unsigned short v53 = 6;
signed int v52 = 1;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v55;
unsigned int v56;
v55 = 7 - 5;
v56 = 6U - 2U;
v27 (v55, v56);
}
break;
case 3: 
{
unsigned char v57;
unsigned int v58;
v57 = 2 + 4;
v58 = 6U - 5U;
v27 (v57, v58);
}
break;
case 5: 
{
unsigned char v59;
unsigned int v60;
v59 = 2 + 0;
v60 = 6U - 7U;
v27 (v59, v60);
}
break;
case 7: 
{
unsigned char v61;
unsigned int v62;
v61 = 0 + 7;
v62 = 6U - 1U;
v27 (v61, v62);
}
break;
case 9: 
{
unsigned char v63;
unsigned int v64;
v63 = 4 + 4;
v64 = 3U - 1U;
v27 (v63, v64);
}
break;
case 11: 
return 2;
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
unsigned char v67;
v67 = v1 ();
history[history_index++] = (int)v67;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
